package controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.PieChart;
import utils.SceneChange;

import java.io.IOException;



public class ChartViewController {
    @FXML
    private BarChart UserChart;
    @FXML
    private PieChart GPUChart;
    @FXML
    private PieChart CPUChart;

    public void changeToTableView(javafx.event.ActionEvent actionEvent) throws IOException {
        SceneChange.changeScene(actionEvent, "../views/TableView.fxml", "Port Royale Records - Table View");
    }

    public void displayUserChart(ActionEvent actionEvent) {
        UserChart.setVisible(true);
        GPUChart.setVisible(false);
        CPUChart.setVisible(false);
    }

    public void displayGPUChart(ActionEvent actionEvent) {
        UserChart.setVisible(false);
        GPUChart.setVisible(true);
        CPUChart.setVisible(false);
    }

    public void displayCPUChart(ActionEvent actionEvent) {
        UserChart.setVisible(false);
        GPUChart.setVisible(false);
        CPUChart.setVisible(true);
    }
}
