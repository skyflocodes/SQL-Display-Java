package utils;

import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.awt.event.ActionEvent;
import java.io.IOException;

public class SceneChange {
    public static void changeScene(javafx.event.ActionEvent event, String location, String windowName) throws IOException {
        Parent root = FXMLLoader.load(new Object(){}.getClass().getResource(location));
        Stage primaryStage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        primaryStage.setTitle(windowName);
        primaryStage.setScene(new Scene(root));
        primaryStage.show();
    }
}
