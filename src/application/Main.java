package application;
	
import java.util.Arrays;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import com.cthrdeve.model.*;
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
			VBox form = new VBox();
			HBox line = new HBox();
			/*
			 * form
			 */
			
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("propMan");
			EntityManager em = emf.createEntityManager();
			em.getTransaction().begin();
			
			
			Property prop = new Property();
			prop.setAddress1("1422 General Pershing Street");
			prop.setCity("New Orleans");
			prop.setState("Louisianna");
			prop.setZip("70115");
			
			
			Owners chad = new Owners();
			chad.setOwnerFirstName("Erik");
			chad.setOwnerLastName("Ogle");
			prop.setOwners(chad);
			em.persist(chad);
			em.persist(prop);
			
			em.getTransaction().commit();
			em.close();
			
			Label nameLabel = new Label("Your name: ");
			TextField name = new TextField();
			line.getChildren().addAll(nameLabel,name);
			form.getChildren().add(line);
			Scene scene = new Scene(form,400,400);
			
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.show();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}
