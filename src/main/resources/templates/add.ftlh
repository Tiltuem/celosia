<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <h1 style="text-align: center;"><strong>Заявка на выездное обслуживание от ресторана Celosia</strong></h1>
                <br>
                <p style="text-align: center;">Введите данные для подачи заявки на выездное обслуживание и<br>расчета примерной стоимости Вашего праздника</p>
                <form action="/request/add" method="post" enctype="multipart/form-data">
                    <label>ФИО</label>
                    <@spring.formInput "request.username" "required placeholder=\"Введите Ваше ФИО\""/>
                    <br>
                    <br>
                    <label>Номер телефона</label>
                    <@spring.formInput "request.phoneNumber" "pattern=\"+7-[0-9]{3}-[0-9]{2}-[0-9]{3}\"required placeholder=\"Введите Ваш номер телефона\""/>
                    <br>
                    <br>
                    <label>Email</label>
                    <@spring.formInput "request.email" "required placeholder=\"Введите Ваш Email\""/>
                    <br>
                    <br>
                    <label>Количество гостей</label>
                    <@spring.formInput "request.guests" "required placeholder=\"Введите количество гостей\""/>
                    <br>
                    <br>
                    <label>Формат мероприятия</label>
                        <select name="format" required>
                            <option value="BANQUET">Банкет</option>
                            <option value="BUFFET">Фуршет</option>
                            <option value="COFFEE_BREAK">Кофе-брейк</option>
                            <option value="SMORGASBORD">Шведский стол</option>
                            <option value="BARBECUE">Барбекю</option>
                            <option value="PICNIC">Пикник</option>
                        </select>
                    <br>
                    <br>
                    <label>Бюджет</label>
                    <@spring.formInput "request.budget" "required placeholder=\"Введите бюджет\""/>
                    <br>
                    <br>
                    <label>Дата и время мероприятия</label>
                    <input type="datetime-local" name="eventDate">
                    <br>
                    <br>
                    <label>Длительность мероприятия</label>
                    <@spring.formInput "request.hourDuration" "required placeholder=\"Укажите длительность мероприятия\""/>
                    <br>
                    <br>
                    <label>Адрес проведения мероприятия</label>
                    <@spring.formInput "request.address" "required placeholder=\"Введите адрес проведения мероприятия\""/>
                    <label>Вариант обслуживания</label>
                    <select name="withService" required>
                        <option value=true>С обслуживанием</option>
                        <option value=false>Без обслуживания</option>
                    </select>
                    <br>
                    <label>Введите дополнительные услуги</label>
                    <@spring.formInput "request.additionalServices" "required placeholder=\"Дополнительные услуги(аренда мебели, текстиля, посуды, оборудования)\""/>
                    <br>
                    <div style="font-size: 18px;">*Дополнительные услуги рассчитываются отдельно</div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="row">
                    <button type="" class="btn btn-dark" onclick="">
                        Добавить блюда из корзины
                    </button>
                    </div>
                    <br>
                    <div style="font-size: 18px;text-align: center">При нажатии на кнопку, все блюда, находящиеся в корзине, будут автоматически добавлены к итоговой стоимости, указанной ниже</div>
                    <br>
                    <br>
                    <label>Комментарии к заявке</label>
                    <@spring.formInput "request.comment" "required placeholder=\"Введите комментарий\""/>
                    <br>
                    <br>
                    <label>Примерная стоимость</label>
                    <input type="text" value="">
                    <div style="text-align: center">
                        <button type="submit" class="btn btn-dark">
                            <strong>Отправить заявку</strong>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</@common.page>