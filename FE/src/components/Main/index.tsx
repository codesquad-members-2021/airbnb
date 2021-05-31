import { useRef, MouseEvent } from 'react';
import { useMainDispatch, useMainState } from '../../contexts/MainContext';
import { Text, TextContentInfo, TextFooter, TextTopBackground } from '../../util/reference';

import Background from '../Common/Background';
import BackgroundFluid from '../Common/BackgroundFluid';

import TopBackground from './TopBackground';
import Nearby from './Nearby';
import RoomType from './RoomType';
import ContentInfo from './ContentInfo';
import Footer from './Footer';

const Main = () => {
  const { nearby, roomType } = Text;
  const { contentInfo } = TextContentInfo;
  const { footerItems } = TextFooter;
  const { headerTexts, searchBarTexts } = TextTopBackground;

  const searchBarRef = useRef<HTMLDivElement>(null);

  const { searchBarClickedIdx } = useMainState();
  const mainDispatch = useMainDispatch();
  const handleBackgroundFluidClick = (e: MouseEvent | Event) => {
    const target = e.target as HTMLElement;
    const isSearchBarItem = searchBarRef.current?.contains(target);
    if (searchBarClickedIdx < 0 || isSearchBarItem) return;
    mainDispatch({ type: 'SET_SEARCHBAR_CLICKED_IDX', payload: -1 });
  };

  return (
    <BackgroundFluid
      onClick={(e: MouseEvent | Event) => handleBackgroundFluidClick(e)}
    >
      <TopBackground
        headerTexts={headerTexts}
        searchBarTexts={searchBarTexts}
        //@ts-ignore
        searchBarRef={searchBarRef}
      />
      <Nearby nearbyItems={nearby} />
      <RoomType roomTypeItems={roomType} />

      <Background backgroundColor={'gray6'}>
        <ContentInfo contentInfoItems={contentInfo} />
        <Footer footerItems={footerItems} />
      </Background>
    </BackgroundFluid>
  );
};

export default Main;
