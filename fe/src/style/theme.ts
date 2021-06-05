import "styled-components";

interface DefaultTheme {
  fontFamily: string;
  fontWeight: {
    [key: string]: string;
  };
  color: {
    [key: string]: string;
  };
  fontSize: {
    [key: string]: string;
  };
  border: {
    [key: string]: string;
  };
}

const theme: DefaultTheme = {
  fontFamily: "Noto Sans KR",
  fontWeight: {
    normal: "400",
    bold: "700",
    bold2: "900",
  },
  color: {
    White: " #FFFFFF",
    Gray6: "#F5F5F7",
    Gray5: "#E0E0E0",
    Gray4: "#BDBDBD",
    Gray3: "#828282",
    Gary2: "#4F4F4F",
    Gary1: "#333333",
    Black: "#010101",
    Red: "#E84C60",
    Green: "#118917",
  },
  fontSize: {
    S: "12px",
    M: "14px",
    L: "16px",
    XL: "18px",
    XXL: "20px",
  },

  border: {
    Gray4: "1px solid #BDBDBD",
    Gray5: "1px solid rgb(221, 221, 221)",
  },
};

export { theme };
