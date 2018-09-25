package AllLayout;

public class Station {
	public String id, name, contact, address;
	public Station() {
		id = name = contact= address = "";
	}
	public Station(String argId, String argName, String argContact, String argAddress) {
		this.id = argId;
		this.name = argName;
		this.contact = argContact;
		this.address = argAddress;
	}
}
