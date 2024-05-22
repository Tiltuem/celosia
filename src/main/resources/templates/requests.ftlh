<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />


<@common.page>
    <section class="about">
            <div class="col-md-12">
                <div class="row">
                    <#if requests?size != 0>
                    <div class="table-responsive">
                        <table class="table  rounded">
                            <thead>
                            <tr>
                                <th>Выполнено</th>
                                <th>ФИО создателя</th>
                                <th>Контакты</th>
                                <th>Количество гостей</th>
                                <th>Формат мероприятия</th>
                                <th>Бюджет</th>
                                <th>Дата и время мероприятия</th>
                                <th>Длительность мероприятия</th>
                                <th>Адрес проведения мероприятия</th>
                                <th>Дополнительные услуги</th>
                                <th>Дистанция от центра города</th>
                                <th>Комментарий</th>
                                <th>Стоимость</th>
                                <th>Удаление</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list requests as request>
                                <tr>
                                    <td>
                                        <#if request.completed>
                                            <i class="bi bi-check2" style="text-align: center"></i>
                                        <#else>
                                            <i class="bi bi-x-lg"  style="text-align: center"></i>
                                        </#if>
                                    </td>
                                    <td>${request.username}</td>
                                    <td>${request.phoneNumber}<br>${request.email}</td>
                                    <td>${request.guests}</td>
                                    <td>${request.eventFormat}</td>
                                    <td>${request.budget}</td>
                                    <td>${request.eventDate}</td>
                                    <td>${request.hourDuration}</td>
                                    <td>${request.address}</td>
                                    <td>${request.additionalServices}</td>
                                    <td>${request.distance}</td>
                                    <td>${request.comment}</td>
                                    <td><a href="/admin/request/${request.id}" class="btn btn-outline-dark">Редактировать</a></td>
                                    <td>
                                        <form action="/admin/request/delete/${request.id}"
                                              method="post">
                                            <button type="submit" class="btn btn-outline-dark">
                                                Удалить
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </#list>
                            </tbody>
                        </table>
                    </div>
                    <#else>
                        <h3>Заказы отсутствуют</h3>
                    </#if>
                </div>
            </div>
    </section>
</@common.page>