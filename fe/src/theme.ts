import "styled-components";
type Keys = "color" | "title" | "content";

interface DefaultTheme {
  [key: string]: {
    [key: string]: string;
  };
}

const theme: DefaultTheme = {
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
  border: {
    Gray4: "1px solid #BDBDBD",
    Gray5: "1px solid rgb(221, 221, 221)",
  },
};

export { theme };
