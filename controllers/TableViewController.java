package controllers;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import models.Participant;
import utils.DB;
import utils.SceneChange;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class TableViewController implements Initializable {

    @FXML
    private TableView<Participant> table;

    @FXML
    private TableColumn<Participant, Integer> placeColumn;

    @FXML
    private TableColumn<Participant, String> userColumn;

    @FXML
    private TableColumn<Participant, Integer> scoreColumn;

    @FXML
    private TableColumn<Participant, String> gPUColumn;

    @FXML
    private TableColumn<Participant, String> cPUColumn;

    public void changeToChartView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/ChartView.fxml", "Port Royale Records - Visuals");
    }


    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        placeColumn.setCellValueFactory(new PropertyValueFactory<Participant,Integer>("Place"));
        userColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("User"));
        scoreColumn.setCellValueFactory(new PropertyValueFactory<Participant,Integer>("Score"));
        gPUColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("GPU"));
        cPUColumn.setCellValueFactory(new PropertyValueFactory<Participant,String>("CPU"));

        try {
            table.getItems().addAll(DB.getAllParticipants());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
