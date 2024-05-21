<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />


<@common.page>
    <section class="about">
        <div class="col-md-12">
            <div class="row">
                <h1 style="text-align: center;"><strong><i>Меню</i></strong></h1>
                <#list products as product>
                    <div class="col-md-3" style="text-align: center">
                        <img src="../css/image/${product.name}.png" height="187" width="247">
                        <br><br>
                        <strong>${product.name}</strong>
                        <br><br>
                        Количество: ${product.count} Вес: ${product.weight}<br>Стоимость: ${product.price}
                        <br><br>
                        <form action="/addProduct" method="post">
                            <input type="hidden" value="${product.id}" name="id">
                            <input type="hidden" value="menu" name="menu">
                            <button type="submit" class="btn btn-outline-dark">
                                <strong>Добавить</strong>
                            </button>
                        </form>
                        <br><br>
                    </div>
                </#list>
            </div>
        </div>
    </section>
</@common.page>