package controller;

import modelo.Locacao;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.inject.Inject;

@Named(value = "locacaoController")
@ViewScoped
public class LocacaoController extends AbstractController<Locacao> {

    @Inject
    private ClienteController idClienteController;

    public LocacaoController() {
        // Inform the Abstract parent controller of the concrete Locacao Entity
        super(Locacao.class);
    }

    /**
     * Resets the "selected" attribute of any parent Entity controllers.
     */
    public void resetParents() {
        idClienteController.setSelected(null);
    }

    /**
     * Sets the "items" attribute with a collection of Detalhe entities that are
     * retrieved from Locacao?cap_first and returns the navigation outcome.
     *
     * @return navigation outcome for Detalhe page
     */
    public String navigateDetalheCollection() {
        if (this.getSelected() != null) {
            FacesContext.getCurrentInstance().getExternalContext().getRequestMap().put("Detalhe_items", this.getSelected().getDetalheCollection());
        }
        return "/detalhe/index";
    }

    /**
     * Sets the "selected" attribute of the Cliente controller in order to
     * display its data in its View dialog.
     *
     * @param event Event object for the widget that triggered an action
     */
    public void prepareIdCliente(ActionEvent event) {
        if (this.getSelected() != null && idClienteController.getSelected() == null) {
            idClienteController.setSelected(this.getSelected().getIdCliente());
        }
    }
}
