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

    public int getPlace() {
        return place;
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCPU() {
        return CPU;
    }

    public void setCPU(String CPU) {
        this.CPU = CPU;
    }

    public String getGPU() {
        return GPU;
    }

    public void setGPU(String GPU) {
        this.GPU = GPU;
    }
}
