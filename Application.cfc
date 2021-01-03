/**
* A Mach-II application.
*/
component extends="MachII.mach-ii" {
    this.name = "MachIIPatternViewLoaderExperiment";
    this.mappings["/extviews"] = "/tmp/external-views";

    MACHII_CONFIG_PATH = expandPath("./config/mach-ii.xml.cfm");
    MACHII_APP_KEY = "MachIIPatternViewLoaderExperiment";
    MACHII_CONFIG_MODE = -1;
    MACHII_VALIDATE_XML = false;

    /**
    * Process a request by handing off to Mach-II
    * @targetPage The URI provided by the CFML engine
    */
    public void function onRequestStarget(required string targetPage) {
        if (listLast(arguments.targetPage) == "index.cfm") {
            handleRequest();
        }
    }

}