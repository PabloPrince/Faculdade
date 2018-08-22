package controller;

import modelo.Status;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;

@Named(value = "statusController")
@ViewScoped
public class StatusController extends AbstractController<Status> {

    public StatusController() {
        // Inform the Abstract parent controller of the concrete Status Entity
        super(Status.class);
    }

    /**
     * Sets the "items" attribute with a collection of Detalhe entities that are
     * retrieved from Status?cap_first and returns the navigation outcome.
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
     * Sets the "items" attribute with a collection of Filme entities that are
     * retrieved from Status?cap_first and returns the navigation outcome.
     *
     * @return navigation outcome for Filme page
     */
    public String navigateFilmeCollection() {
        if (this.getSelected() != null) {
            FacesContext.getCurrentInstance().getExternalContext().getRequestMap().put("Filme_items", this.getSelected().getFilmeCollection());
        }
        return "/filme/index";
    }

}
