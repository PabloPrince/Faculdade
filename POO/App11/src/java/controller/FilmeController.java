package controller;

import modelo.Filme;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.inject.Inject;

@Named(value = "filmeController")
@ViewScoped
public class FilmeController extends AbstractController<Filme> {

    @Inject
    private CategoriaController idCategoriaController;
    @Inject
    private StatusController idStatusController;

    public FilmeController() {
        // Inform the Abstract parent controller of the concrete Filme Entity
        super(Filme.class);
    }

    /**
     * Resets the "selected" attribute of any parent Entity controllers.
     */
    public void resetParents() {
        idCategoriaController.setSelected(null);
        idStatusController.setSelected(null);
    }

    /**
     * Sets the "items" attribute with a collection of Detalhe entities that are
     * retrieved from Filme?cap_first and returns the navigation outcome.
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
     * Sets the "selected" attribute of the Categoria controller in order to
     * display its data in its View dialog.
     *
     * @param event Event object for the widget that triggered an action
     */
    public void prepareIdCategoria(ActionEvent event) {
        if (this.getSelected() != null && idCategoriaController.getSelected() == null) {
            idCategoriaController.setSelected(this.getSelected().getIdCategoria());
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
