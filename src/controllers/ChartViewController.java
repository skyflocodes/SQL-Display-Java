package controllers;

import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import utils.SceneChange;

import java.awt.event.ActionEvent;
import java.io.IOException;

public class ChartViewController {

    public void changeToTableView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/TableView.fxml", "Port Royale Records - Table View");
    }
}
