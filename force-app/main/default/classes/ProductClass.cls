public class ProductClass {
    String[] countries = new String[]{};
       
        public PageReference test() {
            return null;
        }
    
    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('AutoBot','US'));
        options.add(new SelectOption('CloudBot','Canada'));
        options.add(new SelectOption('MegaBot','Mexico'));
        return options;
    }
    
    public String[] getCountries() {
        //If multiselect is false, countries must be of type String
        return countries;
    }
    
    public void setCountries(String[] countries) {
        //If multiselect is false, countries must be of type String
        this.countries = countries;
    }
}