# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA19_формировать_отчет_Cucumber

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

Функционал: Проверка формирования отчета Cucumber

Как разработчик
Я хочу чтобы корректно формировался отчет Cucumber
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
Сценарий: Проверка отчета Cucumber
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаCucumber"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	
	И я перехожу к закладке с именем "ГруппаCucumber"
	И я устанавливаю флаг с именем 'ДелатьОтчетВФорматеCucumberJson'
	И в поле каталог отчета Cucumber я указываю путь к относительному каталогу "tools\Cucumber"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге Cucumber появился 1 файл json