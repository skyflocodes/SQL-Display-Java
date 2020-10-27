package models;

public class Participant {
    private int place, score;
    private String user, CPU, GPU;

    public Participant(int place, String user, int score, String GPU, String CPU){
        setPlace(place);
        setUser(user);
        setScore(score);
        setGPU(GPU);
        setCPU(CPU);
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public void setGPU(String GPU) {
        this.GPU = GPU;
    }
}
