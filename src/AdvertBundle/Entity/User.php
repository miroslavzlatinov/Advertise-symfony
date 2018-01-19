<?php
/**
 * Created by PhpStorm.
 * User: miroslav
 * Date: 1/19/18
 * Time: 8:00 PM
 */



namespace AdvertBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;






    public function __construct()
    {
        parent::__construct();
        // your own logic
    }




}