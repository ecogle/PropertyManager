package application;
	
import java.util.Arrays;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.cthrdeve.model.*;

import application.DepartmentType.DeptType;
import gui.AddDepartmentWindow;
import javafx.application.Application;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;


public class Main extends Application {
	@Override
	public void start(Stage primaryStage) {
		try {
			BorderPane root = new BorderPane();
			
			Button addDepartment = new Button("Add Department");
			Button addPerson = new Button("Add Person");
			addDepartment.setMinWidth(addDepartment.getText().length()*10);
			addPerson.setMinWidth(addPerson.getText().length()*10);
			
			addDepartment.setOnMouseClicked(e -> {
				AddDepartmentWindow newWindow = new AddDepartmentWindow();
				newWindow.show();
				
				newWindow.setOnCloseRequest(r->{
					r.consume();
				});
			});
			
			HBox hBox = new HBox();
			
			hBox.getChildren().add(addDepartment);
			hBox.getChildren().add(addPerson);
			root.getChildren().add(hBox);
			
			Scene scene = new Scene(root,400,600);
			
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setOnCloseRequest(t->{
				primaryStage.close();
				
			});
			primaryStage.show();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
