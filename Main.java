import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import utils.SceneChange;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("views/ChartView.fxml"));
        primaryStage.setTitle("Port Royale Records - Visuals");
        Scene scene = new Scene(root);
        scene.getStylesheets().add(getClass().getResource("style/style.css").toExternalForm());
        primaryStage.setScene(scene);
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
//--module-path "C:\Program Files\Java\javafx-sdk-15.0.1\lib" --add-modules javafx.controls,javafx.fxml