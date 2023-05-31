let Game = {
    name:"",
    body: "",
    transmission: "",
    engine: "",
    year: 0

}
function getData() {
    Game.name = document.getElementById("name").value;
    Game.body = document.getElementById("body").value;
    Game.transmission= document.getElementById("transmission").value
    Game.engine = document.getElementById("engine").value;
    Game.year = document.getElementById("year").value;

    let gameJson = JSON.stringify(Game);
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "write", true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.onload = function() {
        if (xhr.status === 200) {
            // Действия после успешной отправки данных
            console.log("Данные успешно отправлены на сервер");
            // Обновить список игр
            refreshGameList();
        } else {
            // Обработка ошибок при отправке данных
            console.error("Ошибка при отправке данных на сервер");
        }
    };
    xhr.send(gameJson);
};