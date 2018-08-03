$(function () {
    $(".devour").on("click", function (event) {
        console.log("you clicked?");
        event.preventDefault();
        var id = $(this).data("id");
        var isdevoured = $(this).data("isdevoured");

        var devouredState = {
            devoured: isdevoured
        };

        $.ajax("/api/burgers/" + id, {
            type: "PUT",
            data: devouredState
        }).then(
            function () {
                console.log("Changed devoured to ", isdevoured);
                location.reload();
            }
        );
    });

    $("#burgerbutton").on("click", function (event) {
        event.preventDefault();

        var newburger = {
            name: $("#newBurger").val().trim(),
            devoured: false
        }; console.log(newburger);
        $.ajax("/api/burgers/create", {
            type: "POST",
            data: newburger
        }).then(
            function () {
                console.log("created new burger");
                location.reload();
            }
        );
    });
});