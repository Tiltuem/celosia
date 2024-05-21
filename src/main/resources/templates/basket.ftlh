<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <h1 style="text-align: center;"><strong>Корзина</strong></h1>
                <br><br>
                <#list basket as product, count>
                <div class="col-md 4">
                    <div class="row">
                        <div class="col-md-3">
                            <img src="../css/image/${product.name}.png" height="187" width="247">
                        </div>
                    <div class="col-md-4"><strong>${product.name}</strong>
                        <br>
                        Количество: ${count}
                        <br>
                        <form action="/addProduct" method="post">
                            <input type="hidden" value="cart" name="menu">
                            <input type="hidden" value="${product.id}" name="id">
                            <button type="submit" class="btn btn-outline-dark">
                                <strong>Добавить</strong>
                            </button>
                        </form>
                        <br>
                        <form action="/deleteProduct" method="post">
                            <input type="hidden" value="${product.id}" name="id">
                            <button type="submit" class="btn btn-outline-dark">
                                <strong>Удалить</strong>
                            </button>
                        </form>
                    </div>
                    </div>
                    <br><br>
                    <#else>
                    Пусто
                </#list>
            </div>
        </div>
    </section>

</@common.page>