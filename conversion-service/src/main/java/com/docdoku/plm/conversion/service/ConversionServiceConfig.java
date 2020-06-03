package com.docdoku.plm.conversion.service;

import javax.inject.Singleton;

@Singleton
public
class ConversionServiceConfig {
    String getEPLMPHost(){
        return System.getProperty("EPLMP_ENDPOINT","http://back:8080/eplmp-server-rest/api");
    }

    String getVaultPath(){
        return System.getProperty("VAULT_PATH","/data/vault");
    }

    String getConversionsPath(){
        return System.getProperty("CONVERSIONS_PATH","/data/conversions");
    }

    String getDecimaterPath() {
        return "/opt/decimater/openMeshDecimater.sh";
    }

}
