package controller;

import modelo.Detalhe;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.event.ActionEvent;
import javax.inject.Inject;

@Named(value = "detalheController")
@ViewScoped
public class DetalheController extends AbstractController<Detalhe> {

    @Inject
    private FilmeController idFilmeController;
    @Inject
    private LocacaoController idLocacaoController;
    @Inject
    private StatusController idStatusController;

    public DetalheController() {
        // Inform the Abstract parent controller of the concrete Detalhe Entity
        super(Detalhe.class);
    }

    /**
     * Resets the "selected" attribute of any parent Entity controllers.
     */
    public void resetParents() {
        idFilmeController.setSelected(null);
        idLocacaoController.setSelected(null);
        idStatusController.setSelected(null);
    }

    /**
     * Sets the "selected" attribute of the Filme controller in order to display
     * its data in its View dialog.
     *
     * @param event Event object for the widget that triggered an action
     */
    public void prepareIdFilme(ActionEvent event) {
        if (this.getSelected() != null && idFilmeController.getSelected() == null) {
            idFilmeController.setSelected(this.getSelected().getIdFilme());
        }
    }

    /**
     * Sets the "selected" attribute of the Locacao controller in order to
     * display its data in its View dialog.
     *
     * @param event Event object for the widget that triggered an action
     */
    public void prepareIdLocacao(ActionEvent event) {
        if (this.getSelected() != null && idLocacaoController.getSelected() == null) {
            idLocacaoController.setSelected(this.getSelected().getIdLocacao());
        }
    }

    /**
     * Sets the "selected" attribute of the Status controller in order to
     * display its data in its View dialog.
     *
     * @param event Event object for the widget that triggered an action
     */
    public void prepareIdStatus(ActionEvent event) {
        if (this.getSelected() != null && idStatusController.getSelected() == null) {
            idStatusController.setSelected(this.getSelected().getIdStatus());
        }
    }
}
