<?php

namespace AdvertBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Advert
 *
 * @ORM\Table(name="advert")
 * @ORM\Entity(repositoryClass="AdvertBundle\Repository\AdvertRepository")
 */
class Advert
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="title", type="string", length=255)
     */
    private $title;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="price", type="decimal", precision=10, scale=3)
     */
    private $price;

    /**
     * @var string
     *
     * @ORM\Column(name="main_picture", type="string", length=255)
     */
    private $mainPicture;



    /**
     * @var bool
     *
     * @ORM\Column(name="Published", type="boolean")
     */
    private $Published;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="expdate", type="datetime")
     */
    private $expdate;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="create_date", type="datetime")
     */
    private $createDate;

    /**
     * @var int
     *
     * @ORM\Column(name="views_count", type="integer")
     */
    private $viewsCount;

    /**
     * @ORM\ManyToOne(targetEntity="AdvertBundle\Entity\Category", inversedBy="adverts")
     * @ORM\JoinColumn(name ="category_id",referencedColumnName="id")
     * @Assert\NotBlank()
     */
    private $category;

    /**
     * @ORM\ManyToOne(targetEntity="AdvertBundle\Entity\City", inversedBy="adverts")
     * @ORM\JoinColumn(name ="city_id",referencedColumnName="id")
     * @Assert\NotBlank()
     */
    private $city;

    /**
     * @ORM\OneToMany(targetEntity="Image", mappedBy="advert" ,cascade={"remove"})
     */
    private $galery;

    /**
     * @Assert\Image(mimeTypes={"image/png", "image/jpeg"}, maxSize="5M")
     */
    private $image_form;


    /**
     *
     */
    private $files;


    /**
     * @var
     *
     * @ORM\Column(name ="city_id", type = "integer", length=11)
     */



    private $cityId;
    /**
     * @var
     *
     * @ORM\Column(name ="category_id", type = "integer", length=11)
     */

    private  $ctegoryId;



    public function __construct()
    {
        $this->galery = new ArrayCollection();
        $this->setCreateDate(new \DateTime("now"));
    }


    public function getId()
    {
        return $this->id;
    }

    /**
     * Set title.
     *
     * @param string $title
     *
     * @return Advert
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title.
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set description.
     *
     * @param string $description
     *
     * @return Advert
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description.
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set price.
     *
     * @param string $price
     *
     * @return Advert
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price.
     *
     * @return string
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set mainPicture.
     *
     * @param string $mainPicture
     *
     * @return Advert
     */
    public function setMainPicture($mainPicture)
    {
        $this->mainPicture = $mainPicture;

        return $this;
    }

    /**
     * Get mainPicture.
     *
     * @return string
     */
    public function getMainPicture()
    {
        return $this->mainPicture;
    }


    

    /**
     * Set galery.
     *
     * @param int $galery
     *
     * @return Advert
     */
    public function setGalery($galery)
    {
        $this->galery = $galery;

        return $this;
    }

    /**
     * Get galery.
     *
     * @return ArrayCollection
     */
    public function getGalery()
    {
        return $this->galery;
    }

    /**
     * Set Published.
     *
     * @param bool $Published
     *
     * @return Advert
     */
    public function setPublished($Published)
    {
        $this->Published = $Published;

        return $this;
    }

    /**
     * Get Published.
     *
     * @return bool
     */
    public function getPublished()
    {
        return $this->Published;
    }

    /**
     * Set expdate.
     *
     * @param \DateTime
     *
     * @return Advert
     */
    public function setExpdate($expdate)
    {
        $this->expdate = $expdate;

        return $this;
    }

    /**
     * Get expdate.
     *
     * @return \DateTime
     */
    public function getExpdate()
    {
        return $this->expdate;
    }

    /**
     * Set createDate.
     *
     * @param \DateTime $createDate
     *
     * @return Advert
     */
    public function setCreateDate($createDate)
    {
        $this->createDate = $createDate;

        return $this;
    }

    /**
     * Get createDate.
     *
     * @return \DateTime
     */
    public function getCreateDate()
    {
        return $this->createDate;
    }

    /**
     * Set viewsCount.
     *
     * @param int $viewsCount
     *
     * @return Advert
     */
    public function setViewsCount($viewsCount)
    {
        $this->viewsCount = $viewsCount;

        return $this;
    }

    /**
     *
     *
     * @return int
     */
    public function getViewsCount()
    {
        return $this->viewsCount;
    }

    /**
     * @param string $category
     */
    public function setCategory($category)
    {
        $this->category = $category;
    }
    /**
     * Get category
     * @return string
     */
    public function getCategory()
    {
        return $this->category;
    }


    /**
     * @param string $category
     */
    public function setCity($city)
    {
        $this->city = $city;
    }
    /**
     * Get city
     * @return string
     */
    public function getCity()
    {
        return $this->city;
    }


    /**
     * Gets triggered only on insert
     * @ORM\PrePersist()
     */
//    public function onPrePersist()
//    {
//        $this->createDate = new \DateTime("now");
//
//    }

    /**
     * @return mixed
     */
    public function getImageForm()
    {
        return $this->image_form;
    }
    /**
     * @param mixed image_form
     */
    public function setImageForm($image_form)
    {
        $this->image_form = $image_form;
    }

    /**
     * @return ArrayCollection
     */
    public function getFiles()
    {
        return $this->files;
    }
    /**
     * @param ArrayCollection $files
     */
    public function setFiles($files)
    {
        $this->files = $files;
    }


    /**
     *
     *
     * @return string
     */

    function __toString()
    {
        $objectName = __Class__;
        $names = explode("\\", $objectName);
        $name = array_pop($names);
        return $name;
    }
}
