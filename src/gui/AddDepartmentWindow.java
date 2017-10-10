package gui;



import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Text;

import application.Department;
import dataaccess.ApplicationServices;
import dataaccess.DepartmentDao;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class AddDepartmentWindow extends Stage{
	private BorderPane root; 
	private VBox vBox; 
	private TextField deptName;
	private HBox hBox;
	private ListView<Department> departmentsView = new ListView<>();
	ObservableList<Department> data;
	private DepartmentDao dao = ApplicationServices.getDeptDao();
	public AddDepartmentWindow(){
		
		this.setTitle("Add Department");
		root = new BorderPane();
		vBox = new VBox();
		deptName = new TextField("First Name");
		deptName.setMinWidth(200);
		hBox= new HBox();
		hBox.setMinWidth(220);
		refresh();
		
		Button closeMe =new Button("Exit");
		Button saveMe = new Button("Save");
		
		closeMe.setMinWidth(100);
		saveMe.setMinWidth(100);
		
		saveMe.setOnMouseClicked(t->{
			Department d = new Department();
			d.setDepartmentName(deptName.getText().trim());
			save(d);
			this.deptName.setText("");
			refresh();
		});
		
		
		closeMe.setOnMouseClicked(t->{
			
			this.close();
		});
		hBox.getChildren().addAll(saveMe,closeMe);
		vBox.getChildren().addAll(deptName,departmentsView,hBox);
		
		root.getChildren().add(vBox);
		Scene scene = new Scene(root,400,600);
		this.setScene(scene);
		
		
		
	}
	
	private void save(Department dept){
		DepartmentDao dao = ApplicationServices.getDeptDao();
		try{
			dao.createOrUpdate(dept);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private void refresh(){
		data = FXCollections.observableArrayList();
		data.addAll(dao.getAllDepartments());
		departmentsView.setMinHeight(200);
		departmentsView.setMinWidth(200);
		departmentsView.setItems(data);
	}
}
