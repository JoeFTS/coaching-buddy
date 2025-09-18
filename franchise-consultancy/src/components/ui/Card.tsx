import { ReactNode } from 'react';

interface CardProps {
  children: ReactNode;
  className?: string;
  hover?: boolean;
  padding?: 'sm' | 'md' | 'lg';
  variant?: 'default' | 'warm' | 'glass' | 'gradient';
}

const Card = ({
  children,
  className = '',
  hover = false,
  padding = 'md',
  variant = 'default'
}: CardProps) => {
  const baseClasses = 'rounded-2xl transition-all duration-300 ease-out';

  const variantClasses = {
    default: 'bg-white border border-soft-gray/20 shadow-soft',
    warm: 'bg-warm-cream border border-slate-blue/20 shadow-soft',
    glass: 'bg-white/80 backdrop-blur-lg border border-white/30 shadow-medium',
    gradient: 'bg-gradient-to-br from-warm-cream to-warm-sand border border-slate-blue/20 shadow-soft'
  };

  const hoverClasses = hover ? 'hover:shadow-large hover:-translate-y-1 hover:scale-[1.02]' : '';

  const paddingClasses = {
    sm: 'p-5',
    md: 'p-8',
    lg: 'p-10'
  };

  const combinedClasses = `${baseClasses} ${variantClasses[variant]} ${hoverClasses} ${paddingClasses[padding]} ${className}`;

  return <div className={combinedClasses}>{children}</div>;
};

export default Card;