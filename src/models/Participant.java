package models;

public class Participant {
    private int place, score;
    private String user, CPU, GPU;

    /**
     * builds a participant class
     * @param place
     * @param user
     * @param score
     * @param GPU
     * @param CPU
     */
    public Participant(int place, String user, int score, String GPU, String CPU){
        setPlace(place);
        setUser(user);
        setScore(score);
        setGPU(GPU);
        setCPU(CPU);
    }

    /**
     * makes sure the place is between 0 and 100
     * @param place
     */
    public void setPlace(int place) {
        if (place>=1 && place<=100) {
            this.place = place;
        }else{
            throw new IllegalArgumentException("place must be 1-100");
        }
    }

    /**
     * makes sure the score is greater than the 100th place
     * @param score
     */
    public void setScore(int score) {
        if (score >= 19968) {
            this.score = score;
        } else {
            throw new IllegalArgumentException("score must be higher than the 100th current top score");
        }
    }

    /**
     * makes sure the user submitted a name
     * @param user
     */
    public void setUser(String user) {
        if(!user.isBlank()) {
            this.user = user;
        } else {
            throw new IllegalArgumentException("User must not be blank");
        }
    }

    /**
     * makes sure the user submitted a cpu
     * @param CPU
     */
    public void setCPU(String CPU) {
        if (!CPU.isBlank()) {
            this.CPU = CPU;
        } else {
            throw new IllegalArgumentException("CPU must not be blank");
        }
    }

    /**
     * makes sure the user submitted a gpu
     * @param GPU
     */
    public void setGPU(String GPU) {
        if (!GPU.isBlank()) {
            this.GPU = GPU;
        } else {
            throw new IllegalArgumentException("GPU must not be blank");
        }
    }

    /**
     * gets the place value of a given participant
     * @return
     */
    public int getPlace() {
        return place;
    }

    /**
     * gets the score value of a given participant
     * @return
     */
    public int getScore() {
        return score;
    }

    /**
     * gets the user value of a given participant
     * @return
     */
    public String getUser() {
        return user;
    }

    /**
     * gets the cpu value of a given participant
     * @return
     */
    public String getCPU() {
        return CPU;
    }

    /**
     * gets the gpu value of a given participant
     * @return
     */
    public String getGPU() {
        return GPU;
    }
}
