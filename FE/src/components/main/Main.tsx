import TopBackground from './partial/TopBackground';
import Nearby from './partial/Nearby';
import RoomType from './partial/RoomType';
import ContentInfo from './partial/ContentInfo';

import { Text, TextContentInfo } from '../../common/reference';
import Background from '../utilComponents/Background';

const Main = () => {
  const { nearby, roomType } = Text;
  const { contentInfo } = TextContentInfo;

  return (
    <>
      <TopBackground />
      <Nearby captions={nearby} />
      <RoomType captions={roomType} />
      <Background strColor={'gray6'} >
        <ContentInfo captions={contentInfo}/>
      </Background>
    </>
  );
};

export default Main;
