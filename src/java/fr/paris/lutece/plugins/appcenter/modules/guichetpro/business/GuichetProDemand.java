/*
 * Copyright (c) 2002-2014, Mairie de Paris
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  1. Redistributions of source code must retain the above copyright notice
 *     and the following disclaimer.
 *
 *  2. Redistributions in binary form must reproduce the above copyright notice
 *     and the following disclaimer in the documentation and/or other materials
 *     provided with the distribution.
 *
 *  3. Neither the name of 'Mairie de Paris' nor 'Lutece' nor the names of its
 *     contributors may be used to endorse or promote products derived from
 *     this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * License 1.0
 */
package fr.paris.lutece.plugins.appcenter.modules.guichetpro.business;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import fr.paris.lutece.plugins.appcenter.business.Demand;
import fr.paris.lutece.portal.service.template.AppTemplateService;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class GuichetProDemand extends Demand
{
    private static final String TEMPLATE_GUICHET_PRO_DEMAND_INFOS = "skin/plugins/appcenter/modules/guichetpro/guichetpro_demand_infos.html";
    public static final String DEMAND_TYPE = "guichetpro";
    public static final String ID_DEMAND_TYPE = "guichetpro";

    private String _strEnvironment;
    private String _strApplicationCode;
    private String _strGuichetProDemandType;
    private String _strCategoryGuichetProDemandType;
    private String _strIdGuichetProDemandType;

    /**
     * Returns the Environment
     *
     * @return The Environment
     */
    public String getEnvironment() {
        return _strEnvironment;
    }

    /**
     * Sets the Environment
     *
     * @param strEnvironment The Environment
     */
    public void setEnvironment(String strEnvironment) {
        _strEnvironment = strEnvironment;
    }

    /**
     * Get the application code
     * @return the application code
     */
    public String getApplicationCode()
    {
        return _strApplicationCode;
    }

    /**
     * Set the application code
     * @param strApplicationCode the application code 
     */
    public void setApplicationCode( String strApplicationCode )
    {
        _strApplicationCode = strApplicationCode;
    }

    /**
     * Get the gru demand type
     * @return the gru demand type
     */
    public String getGuichetProDemandType()
    {
        return _strGuichetProDemandType;
    }
    
    /**
     * Set the gru demand type
     * @param strGuichetProDemandType 
     */
    public void setGuichetProDemandType( String strGuichetProDemandType )
    {
        _strGuichetProDemandType = strGuichetProDemandType;
    }

    /**
     * Get the category of gru demand type
     * @return the category of gru demand type
     */
    public String getCategoryGuichetProDemandType()
    {
        return _strCategoryGuichetProDemandType;
    }

    /**
     * Set the category of gru demand type
     * @param strCategoryGuichetProDemandType 
     */
    public void setCategoryGuichetProDemandType( String strCategoryGuichetProDemandType )
    {
        _strCategoryGuichetProDemandType = strCategoryGuichetProDemandType;
    }

    /**
     * Get the id of gru demand type
     * @return the id of gru demand type
     */
    public String getIdGuichetProDemandType()
    {
        return _strIdGuichetProDemandType;
    }

    /**
     * Set the id of gru demand type
     * @param strIdGuichetProDemandType 
     */
    public void setIdGuichetProDemandType( String strIdGuichetProDemandType )
    {
        _strIdGuichetProDemandType = strIdGuichetProDemandType;
    }
    
    
    /**
     * {@inheritDoc}
     */
    @Override
    public String getComplementaryInfos( )
    {
        Map<String, Object> model = new HashMap<String, Object>( );
        model.put( MARK_DEMAND, this );
        return AppTemplateService.getTemplate( TEMPLATE_GUICHET_PRO_DEMAND_INFOS, Locale.FRENCH, model ).getHtml( );
    }

    /**
     * Get the demand type id
     * 
     * @return the demand type id
     */
    @JsonIgnore
    @Override
    public String getIdDemandType( )
    {
        return ID_DEMAND_TYPE;
    }

    /**
     * Get the demand type id
     * 
     * @return the demand type id
     */
    @JsonIgnore
    @Override
    public String getDemandType( )
    {
        return DEMAND_TYPE;
    }

}