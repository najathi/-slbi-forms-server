<?php
switch ($_SERVER["SCRIPT_NAME"]) {
    case "/403.php":
        $CURRENT_PAGE = "403 Forbidden";
        $PAGE_TITLE = "403 Forbidden";
        break;
    case "/404.php":
        $CURRENT_PAGE = "404 Forbidden";
        $PAGE_TITLE = "404 Forbidden";
        break;
    case "/503.php":
        $CURRENT_PAGE = "503 Forbidden";
        $PAGE_TITLE = "503 Forbidden";
        break;
    case "/employee.php":
        $CURRENT_PAGE = "Employee";
        $PAGE_TITLE = "Employee";
        break;
    case "/manufacturer.txt.php":
        $CURRENT_PAGE = "Manufacturer";
        $PAGE_TITLE = "Manufacturer";
        break;
    default:
        $CURRENT_PAGE = "SLBI Forms";
        $PAGE_TITLE = "SLBI Forms";
}
