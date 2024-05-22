<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <h1 style="text-align: center;"><strong><i>Кухня</i></strong></h1>
                <br><br>
                <#list products as product>
                <div class="col-md 4">
                    <div class="row">
                        <div class="col-md-3">
                            <img src="/../css/image/${product.name}.png" height="187" width="247">
                        </div>
                        <div class="col-md-4">
                            <strong><i>${product.name}</i></strong>
                            <br>
                            Цена за шт: ${product.price}
                        </div>
                    </div>
                    <br><br>
                    </#list>
                </div>
            </div>
        </div>
    </section>
</@common.page>