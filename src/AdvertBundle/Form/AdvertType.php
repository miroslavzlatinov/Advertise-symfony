<?php

namespace AdvertBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use  Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\FormType;
use Ivory\CKEditorBundle\Form\Type\CKEditorType;
class AdvertType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('title')
            ->add('description',CKEditorType::class, array(
        'config' => array(
            'uiColor' => '#ffffff',
            //...
        )))
            ->add('price')
//            ->add('mainPicture')
            ->add('Published')
            ->add('expdate',DateTimeType::class)
             /*->add('createDate')*/
             ->add('viewsCount')
             ->add('category',EntityType::class,['class' => 'AdvertBundle\Entity\Category', 'choice_label' => 'category'])
             ->add('city' ,EntityType::class,['class' => 'AdvertBundle\Entity\City', 'choice_label' => 'city'])
            ->add('image_form', FileType::class,
                [
                    'data_class' => null,
                    'required' => false
                ])
            ->add('files', FileType::class, array('multiple' => 'true', 'data_class' => null,'required' => false));



    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AdvertBundle\Entity\Advert'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'advertbundle_advert';
    }


}
