package airbnb.Service;

import airbnb.dao.ImageDao;
import airbnb.domain.Image;
import airbnb.domain.ImageType;
import org.springframework.stereotype.Service;

@Service
public class ImageService {

    private final ImageDao imageDao;

    public ImageService(ImageDao imageDao) {
        this.imageDao = imageDao;
    }

    public Image findHeroImage() {
        return imageDao.findByType(ImageType.HERO.name()).get(0);
    }
}
