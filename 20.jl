function moving_recursion!(robot,side)  #Рекурсивным методом идет до стены, ставит маркер и идет обратно.
    if (isborder(robot, side))
        putmarker!(robot)
    else
        move!(robot, side)
        moving_recursion!(robot, side)
        move!(robot, inverse(side))
    end
end
