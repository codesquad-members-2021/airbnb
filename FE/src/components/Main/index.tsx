import Background from '../Common/Background';
import TopBackground from './TopBackground';
import Nearby from './Nearby';
import RoomType from './RoomType';
import ContentInfo from './ContentInfo';
import Footer from './Footer';
import {
  Text,
  TextContentInfo,
  TextFooter,
  TextTopBackground,
} from '../../util/reference';

const Main = () => {
  const { nearby, roomType } = Text;
  const { contentInfo } = TextContentInfo;
  const { footerItems } = TextFooter;
  const { headerTexts, searchBarTexts } = TextTopBackground;

  return (
    <>
      <TopBackground
        headerTexts={headerTexts}
        searchBarTexts={searchBarTexts}
      />
      <Nearby nearbyItems={nearby} />
      <RoomType roomTypeItems={roomType} />
      <Background backgroundColor={'gray6'}>
        <ContentInfo contentInfoItems={contentInfo} />
        <Footer footerItems={footerItems} />
      </Background>
    </>
  );
};

export default Main;
