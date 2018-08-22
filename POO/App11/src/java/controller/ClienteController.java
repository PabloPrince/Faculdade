package controller;

import modelo.Cliente;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;

@Named(value = "clienteController")
@ViewScoped
public class ClienteController extends AbstractController<Cliente> {

    public ClienteController() {
        // Inform the Abstract parent controller of the concrete Cliente Entity
        super(Cliente.class);
    }

    /**
     * Sets the "items" attribute with a collection of Locacao entities that are
     * retrieved from Cliente?cap_first and returns the navigation outcome.
     *
     * @return navigation outcome for Locacao page
     */
    public String navigateLocacaoCollection() {
        if (this.getSelected() != null) {
            FacesContext.getCurrentInstance().getExternalContext().getRequestMap().put("Locacao_items", this.getSelected().getLocacaoCollection());
        }
        return "/locacao/index";
    }

}
