package controller;

import modelo.Categoria;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;

@Named(value = "categoriaController")
@ViewScoped
public class CategoriaController extends AbstractController<Categoria> {

    public CategoriaController() {
        // Inform the Abstract parent controller of the concrete Categoria Entity
        super(Categoria.class);
    }

    /**
     * Sets the "items" attribute with a collection of Filme entities that are
     * retrieved from Categoria?cap_first and returns the navigation outcome.
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
