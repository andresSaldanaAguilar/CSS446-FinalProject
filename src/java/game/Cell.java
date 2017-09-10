/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package game;

//
class Cell {
    
    private Player player;
    
    public static final String IMAGE_NOBODY = "";
    public String IMAGE_USER;
    public String IMAGE_COMPUTER;  
    public static String IMAGE_CROSS = "&times;";
    public static String IMAGE_CIRCLE = "o";
    
    public static final String CSS_NOBODY = "ttt-nobody";
    public static final String CSS_USER = "ttt-user";
    public static final String CSS_COMPUTER = "ttt-computer";
    
    //constructor de la celda
    public Cell() {
        this.player = Player.NoBody;     
    }
    //retorna si esta disponible
    public boolean isAvailable() {
        return player == Player.NoBody;
    }
    //retorna el jugador de la celda
    public Player getPlayer() {
        return player;
    }
    
    public void played(boolean playedByUser) {
        if (playedByUser) {
            player = Player.User;
        } else {
            player = Player.Computer;
        }
    }
    
    public String getImageHTML() {
        StringBuilder out = new StringBuilder();
        out.append("<span class=\"");
        switch(player) {
            case Computer:
                out.append(CSS_COMPUTER)
                        .append("\">")
                        .append(IMAGE_COMPUTER);
                break;
            case User:
                out.append(CSS_USER)
                        .append("\">")
                        .append(IMAGE_USER);
                break;
            case NoBody:
            default:
                out.append(CSS_NOBODY)
                        .append("\">")
                        .append(IMAGE_NOBODY);
        }
        out.append("</span>");
        return out.toString();
    }
    
    //setters de las fichas
    public void setCircleUser(){
        this.IMAGE_USER=IMAGE_CIRCLE;
        this.IMAGE_COMPUTER=IMAGE_CROSS;
    }
    
    public void setCrossUser(){
        this.IMAGE_USER=IMAGE_CROSS;
        this.IMAGE_COMPUTER=IMAGE_CIRCLE;
    }
    //getter de las ficha del usuario 
    public boolean isTokenUserCross(){
        return IMAGE_USER.equals(IMAGE_CROSS);
    }
   
}
