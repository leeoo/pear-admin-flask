"""empty message

Revision ID: 64de3323bc01
Revises: 95b59a101b26
Create Date: 2021-03-18 20:54:17.724297

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '64de3323bc01'
down_revision = '95b59a101b26'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('admin_user', sa.Column('realname', sa.String(length=20), nullable=True, comment='真实名字'))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('admin_user', 'realname')
    # ### end Alembic commands ###
