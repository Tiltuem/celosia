<#import "parts/common.ftlh" as common>
<#import "/spring.ftl" as spring />

<@common.page>
    <section class="about">
        <div class="container">
            <div class="col-md-12">
                <h1 style="text-align: center;"><strong>Заявка на выездное обслуживание от ресторана Celosia</strong></h1>
                <br>
                <p style="text-align: center;">Введите данные для подачи заявки на выездное обслуживание и<br>расчета примерной стоимости Вашего праздника</p>
                <form action="/user/add" method="post" enctype="multipart/form-data">

                    <label>ФИО</label>
                    <@spring.formInput "request.username" "required placeholder=\"Введите Ваше ФИО\""/>
                    <br>
                    <br>
                    <label>Номер телефона</label>
                    <@spring.formInput "request.phoneNumber" "required placeholder=\"Введите Ваш номер телефона\""/>
                    <br>
                    <br>
                    <label>Email</label>
                    <@spring.formInput "request.username" "required placeholder=\"Введите Ваш Email\""/>
                    <br>
                    <br>
                    <label>Количество гостей</label>
                    <@spring.formInput "request.guests" "required placeholder=\"Введите количество гостей\""/>
                    <br>
                    <br>
                    <label>Формат мероприятия</label>
                        <select id="format" name="format" required>
                            <option value="banquet">Банкет</option>
                            <option value="buffet">Фуршет</option>
                            <option value="coffee_break">Кофе-брейк</option>
                            <option value="swedish_table">Шведский стол</option>
                            <option value="barbecue">Барбекю</option>
                            <option value="picnic">Пикник</option>
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
                    <@spring.formInput "request.eventDate" "required placeholder=\"Укажите длительность мероприятия\""/>
                    <br>
                    <br>
                    <label>Адрес проведения мероприятия</label>
                    <@spring.formInput "request.eventDate" "required placeholder=\"Введите адрес проведения мероприятия\""/>
                    <label>Вариант обслуживания</label>
                    <select id="" name="" required>
                        <option value="">С обслуживанием</option>
                        <option value="">Без обслуживания</option>
                    </select>
                    <br>
                    <br>
                    <label>Введите дополнительные услуги</label>
                    <@spring.formInput "request.eventDate" "required placeholder=\"Дополнительные услуги(аренда мебели, текстиля, посуды, оборудования)\""/>
                    <br>
                    <br>
                    <div style="font-size: 10px;">*Дополнительные услуги рассчитываются отдельно</div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="row">
                    <button type="submit" class="btn btn-dark">
                        Добавить блюда из корзины
                    </button>
                    </div>
                    <br>
                    <br>
                    <div style="font-size: 10px;align-items: center">При нажатии на кнопку, все блюда, находящиеся в корзине, будут автоматически добавлены к итоговой стоимости, указанной ниже</div>
                </form>
            </div>
        </div>
    </section>
</@common.page>