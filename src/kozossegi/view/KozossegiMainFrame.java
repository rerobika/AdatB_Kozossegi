package kozossegi.view;

import java.awt.CardLayout;
import java.awt.Dimension;

import javax.swing.JFrame;
import javax.swing.JPanel;

import kozossegi.Labels;
import kozossegi.controller.KozossegiController;
import kozossegi.view.elements.maincontent.KozossegiLogin;
import kozossegi.view.elements.maincontent.KozossegiRegister;

public class KozossegiMainFrame extends JFrame {
	private static final long serialVersionUID = -3443677995502851727L;
	private KozossegiController controller;
	private JPanel activePanel;
	private KozossegiLogin loginPanel;
	private KozossegiRegister registerPanel;
	private CardLayout cardLayout;
	
	public KozossegiMainFrame(KozossegiController controller) {
		this.controller = controller;
		activePanel = new JPanel(new CardLayout());
		cardLayout = (CardLayout) activePanel.getLayout();
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle(Labels.MAIN_FRAME_TITLE);
		setSize(new Dimension(640, 480));
		add(activePanel);		
		selectActivePanel(startScreen());
		setLocationRelativeTo(null);
		setVisible(true);
					
	}
	
	public KozossegiController getController(){
		return controller;
	}
	

	public KozossegiLogin getLoginPanel() {
		return loginPanel;
	}
	
	public KozossegiRegister getRegisterPanel() {
		return registerPanel;
	}

	public void selectActivePanel(JPanel panelToVisible) {
		activePanel.removeAll();
		activePanel.add(panelToVisible,panelToVisible.getName());
		cardLayout.show(activePanel, panelToVisible.getName());
		pack();
		
	}
	
	public JPanel startScreen(){
		 return new KozossegiLogin(this);
	}


}
