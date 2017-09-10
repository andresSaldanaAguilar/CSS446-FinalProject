/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import game.GameController;
import javax.servlet.http.HttpServletRequest;


public abstract class ServletHelper {
    
    /**
     * retorna el controlador del juego actual
     */
    public static GameController getGameController(HttpServletRequest request) {
        return (GameController) request.getSession(true).getAttribute("game");
    }
    
}
