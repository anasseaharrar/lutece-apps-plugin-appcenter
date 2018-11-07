/*
 * Copyright (c) 2002-2018, Mairie de Paris
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
package fr.paris.lutece.plugins.appcenter.business;

import fr.paris.lutece.portal.service.util.AppLogService;
import fr.paris.lutece.util.ReferenceItem;
import fr.paris.lutece.util.ReferenceList;
import java.io.Serializable;
import java.util.Collection;

/**
 * This is the business class for the object Permission
 */ 
public class Permission implements Serializable
{
    private static final long serialVersionUID = 1L;
    
    private String _strCode;
    private String _strLabel;
    private Class _resourceTypeClass;

    /**
     * Returns the Code
     * @return The Code
     */
    public String getCode( )
    {
        return _strCode;
    }

    /**
     * Sets the Code
     * @param strCode The Code
     */ 
    public void setCode( String strCode )
    {
        _strCode = strCode;
    }
    
    /**
     * Returns the Label
     * @return The Label
     */
    public String getLabel( )
    {
        return _strLabel;
    }

    /**
     * Sets the Label
     * @param strLabel The Label
     */ 
    public void setLabel( String strLabel )
    {
        _strLabel = strLabel;
    }
    
    /**
     * Sets the ResourceType
     * @param resourceTypeClass The ResourceType class
     */ 
    public void setResourceTypeClass( Class resourceTypeClass )
    {
        _resourceTypeClass = resourceTypeClass;
    }
    
    public String getResourceTypeKey()
    {
        try
        {
            IAppCenterResourceType resourceType = (IAppCenterResourceType)_resourceTypeClass.newInstance();
            return resourceType.getRessourceTypeKey();
        }
        catch ( InstantiationException|IllegalAccessException e  )
        {
            AppLogService.error( "Unable to instantiate resource type", e);
            return null;
        }
                
        
    }
    
    public Collection<String> getResourceTypeValues()
    {
        try
        {
            IAppCenterResourceType resourceType = (IAppCenterResourceType)_resourceTypeClass.newInstance();
            Collection<String> listResourceTypeValues = resourceType.getResourceTypeValues( );
            if ( resourceType.hasMultipleValues( ) )
            {
                listResourceTypeValues.add("*");
            }
            return listResourceTypeValues;
        }
        catch ( InstantiationException|IllegalAccessException e )
        {
            AppLogService.error( "Unable to instantiate resource type", e);
            return null;
        }
    }
}
