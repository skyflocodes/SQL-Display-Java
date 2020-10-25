import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("views/TableView.fxml"));
        primaryStage.setTitle("Port Royale Records - Table View");
        primaryStage.setScene(new Scene(root));
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
//--module-path "C:\Program Files\Java\javafx-sdk-15.0.1\lib" --add-modules javafx.controls,javafx.fxml