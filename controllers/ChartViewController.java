package controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import utils.SceneChange;

import java.io.IOException;



public class ChartViewController {
    @FXML
    private BarChart<String, Integer> userChart;
    @FXML
    private PieChart gPUChart;
    @FXML
    private PieChart cPUChart;

    public void changeToTableView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/TableView.fxml", "Port Royale Records - Table View");
    }

    public void displayUserChart(ActionEvent actionEvent) {
        userChart.setVisible(true);
        gPUChart.setVisible(false);
        cPUChart.setVisible(false);
    }

    public void displayGPUChart(ActionEvent actionEvent) {
        userChart.setVisible(false);
        gPUChart.setVisible(true);
        cPUChart.setVisible(false);
    }

    public void displayCPUChart(ActionEvent actionEvent) {
        userChart.setVisible(false);
        gPUChart.setVisible(false);
        cPUChart.setVisible(true);
    }
}
