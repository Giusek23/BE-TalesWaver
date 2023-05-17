package com.talesweaver.SRVSTalesWeaver.swagger;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Contact;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.info.License;
import org.springframework.web.bind.annotation.RestController;

@RestController
@OpenAPIDefinition(info =
@Info(
        title = "TalesWeaver",
        version = "0.0",
        license = @License(name = "Apache 2.0", url = "http://foo.bar"),
        contact = @Contact(url = "ht", name = "Freid", email = "@example")
))
public class SwaggerConfig {
}