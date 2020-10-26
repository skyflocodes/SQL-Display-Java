package controllers;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import models.Participant;
import utils.SceneChange;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;

public class TableViewController implements Initializable {

    @FXML
    private TableView<Participant> Table;

    @FXML
    private TableColumn<Participant, Integer> PlaceColumn;

    @FXML
    private TableColumn<Participant, String> UserColumn;

    @FXML
    private TableColumn<Participant, Integer> ScoreColumn;

    @FXML
    private TableColumn<Participant, String> GPUColumn;

    @FXML
    private TableColumn<Participant, String> CPUColumn;

    public void changeToChartView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/ChartView.fxml", "Port Royale Records - Visuals");
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        PlaceColumn.setCellValueFactory(new PropertyValueFactory<Participant,Integer>("place"));
        UserColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("user"));
        ScoreColumn.setCellValueFactory(new PropertyValueFactory<Participant,Integer>("score"));
        GPUColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("GPU"));
        CPUColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("CPU"));


    }
}
