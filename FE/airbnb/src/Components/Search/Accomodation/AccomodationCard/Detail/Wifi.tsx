interface Props {
  isWiFi: boolean;
}

const WiFi = ({ isWiFi }: Props) => {
  return isWiFi ? <span>무선 인터넷</span> : null;
};

export default WiFi;
