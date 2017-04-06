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
	private JPanel panelList;
	private KozossegiLogin loginPanel;
	private KozossegiRegister registerPanel;
	private CardLayout cardLayout;
	
	public KozossegiMainFrame(KozossegiController controller) {
		panelList = new JPanel(new CardLayout());
		cardLayout = (CardLayout) panelList.getLayout();
		
		loginPanel = new KozossegiLogin(this);
		registerPanel = new KozossegiRegister(this);			
		panelList.add(loginPanel, loginPanel.getName());
		panelList.add(registerPanel, registerPanel.getName());
		
		
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setTitle(Labels.MAIN_FRAME_TITLE);
		setSize(new Dimension(640, 480));
		add(panelList);		
		selectActivePanel(loginPanel);
		pack();
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
		 cardLayout.show(panelList, panelToVisible.getName());
	}


}
