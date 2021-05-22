import MainTopBackground from './MainTopBackground';
import MainNearby from './MainNearby';
import MainRoomType from './MainRoomType';
import MainContentInfo from './MainContentInfo';

import { Text, TextContentInfo, TextFooter } from '../../common/reference';
import Background from '../utilComponents/Background';
import MainFooter from './MainFooter';

const Main = () => {
  const { nearby, roomType } = Text;
  const { contentInfo } = TextContentInfo;
  const { footerItems } = TextFooter;

  return (
    <>
      <MainTopBackground />
      <MainNearby nearbyItems={nearby} />
      <MainRoomType roomTypeItems={roomType} />
      <Background color={'gray6'} >
        <MainContentInfo contentInfoItems={contentInfo}/>
        <MainFooter footerItems={footerItems}/>
      </Background>
    </>
  );
};

export default Main;
