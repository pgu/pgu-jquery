package pgu.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Product implements Serializable {

    private String id;
    private String reference;

    @Override
    public String toString() {
        return "Product [id=" + id + ", reference=" + reference + "]";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + (id == null ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Product other = (Product) obj;
        if (id == null) {
            if (other.id != null) {
                return false;
            }
        } else if (!id.equals(other.id)) {
            return false;
        }
        return true;
    }

    public Product id(final String id) {
        setId(id);
        return this;
    }

    public Product reference(final String ref) {
        setReference(ref);
        return this;
    }

    public String getId() {
        return id;
    }

    public void setId(final String id) {
        this.id = id;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(final String reference) {
        this.reference = reference;
    }

}
