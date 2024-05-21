<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />


<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <div class="row">
                    <h1 style="text-align: center;"><strong>Стоимость</strong>
                    </h1>
                    <br>
                    <form action="/admin/request/save" method="post" enctype="multipart/form-data">
                        <input type="hidden" value="${request.id}" name="id">
                        <label>Сумма по кухне</label>
                        <input disabled value="${request.kitchenPrice}">
                        <br>
                        <br>
                        <label>Обслуживание</label>
                        <input disabled value="${request.servicePrice}">
                        <br>
                        <br>
                        <label>Логистика</label>
                        <input disabled value="${request.distancePrice}">
                        <br>
                        <br>
                        <label>С/с продуктов</label>
                        <input disabled value="${request.costPrice}">
                        <br>
                        <br>
                        <label>Прибыль в рублях</label>
                        <input disabled value="${request.profit}">
                        <br>
                        <br>
                        <label>Способ оплаты</label>
                        <select name="typePayment">
                            <option value="Карта">Карта</option>
                            <option value="Наличные">Наличные</option>
                            <option value="Перевод">Перевод</option>
                        </select>
                        <label>Введите стоимость доп. услуг</label>
                        <input type="number" name="additionalPrice">
                        <label>Выполнено</label>
                        <select name="completed" required>
                            <option value="true">Да</option>
                            <option value="false">Нет</option>
                        </select>
                        <br>
                        <br>
                        <div style="text-align: center">
                            <button type="submit" class="btn btn-dark">
                                <strong>Сохранить</strong>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</@common.page>