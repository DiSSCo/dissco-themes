<#import "template.ftl" as layout>
<#import "field.ftl" as field>
<#import "buttons.ftl" as buttons>
<#import "social-providers.ftl" as identityProviders>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>
<!-- template: login.ftl -->

    <#if section = "header">
        ${msg("loginAccountTitle")}
    <#elseif section = "socialProviders" >
        <#if realm.password && social.providers?? && social.providers?has_content>
            <@identityProviders.show social=social/>
        </#if>
    </#if>
    <#elseif section = "details" >
        <div id="orcid-content">
            <h3>Why sign in with ORCID?</h3>
            <p>DiSSCover uses ORCID to provide a secure, single sign-on that connects your professional identity to your research activity. This ensures your work is accurately attributed and your preferences are saved across sessions.</p>
            <a href="https://info.orcid.org/researchers/" target="_blank" rel="noreferrer">Learn more about ORCID</a>
        </div>
    </#if>
</@layout.registrationLayout>
