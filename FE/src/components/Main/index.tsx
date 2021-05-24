import TopBackground from './TopBackground';
import Nearby from './Nearby';
import RoomType from './RoomType';
import ContentInfo from './ContentInfo';
import Footer from './Footer';

import { Text, TextContentInfo, TextFooter } from '../../util/reference';
import Background from '../Common/Background';

const Main = () => {
  const { nearby, roomType } = Text;
  const { contentInfo } = TextContentInfo;
  const { footerItems } = TextFooter;

  return (
    <>
      <TopBackground />
      <Nearby nearbyItems={nearby} />
      <RoomType roomTypeItems={roomType} />
      <Background color={'gray6'} >
        <ContentInfo contentInfoItems={contentInfo}/>
        <Footer footerItems={footerItems}/>
      </Background>
    </>
  );
};

export default Main;
