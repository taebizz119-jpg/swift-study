    switch numberOfOpenSwitch {
    case 1:
        greenPortal.isActive = false
    case 4:
        greenPortal.isActive = true
    default:
        break
    }
    
    // 3항 연산자
    // condition ? {true 일 때 실행} : {false 일 때 실행}
