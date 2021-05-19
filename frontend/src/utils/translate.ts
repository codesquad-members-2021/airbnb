const translate = (pos: string, type:string, language:string):string => {
    let result = '';
        if(language === "KR") {
            if(pos === "placeholder") {
                if(type === "LOCATION") result = "어디로 여행가세요?";
                else if (type === "CHECKIN" || type === "CHECKOUT") result = "날짜 입력";
                else if (type === "FEE") result = "금액대 설정";
                else if (type === "GUEST") result = "게스트 추가";
            }
            else if (pos === "title") {
                if(type === "LOCATION") result = "위치";
                else if (type === "CHECKIN") result = "체크인";
                else if (type === "CHECKOUT") result = "체크아웃";
                else if (type === "FEE") result = "요금";
                else if (type === "GUEST") result = "인원";
            }
        }
        return result;
}

export default translate;