function modeultest(istwert, sollwert)
    % 计算函数的结果
    tol=1e-10;
    % 使用assert检查结果是否正确
    assert(abs(istwert - sollwert)<tol);

    % 如果结果正确，输出语句 test passed
    if abs(istwert - sollwert)<tol
        disp("test passed");
    else
        disp("test not passed: istwert:%f, sollwert: %f",istwert,sollwert)
    end

    % 返回结果
end